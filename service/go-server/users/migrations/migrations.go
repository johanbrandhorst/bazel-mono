package migrations

import "fmt"

func AssetNames() []string {
	var names []string
	for k := range data {
		names = append(names, k)
	}

	return names
}

func Asset(name string) ([]byte, error) {
	d, ok := data[name]
	if !ok {
		return nil, fmt.Errorf("file not found: %q", name)
	}

	return d, nil
}
